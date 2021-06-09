//  SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;
    
    contract tarefasDiarias; {
        
        uint public nTarefas;
    
        enum tarefasFases {ToDo, InProgress, Done, Blocked, Review, Postponed, Canceled};
        
        struct TarefasStruct {
            address owner;
            string name;
            TarefasFases;
            
            uint priority; 
            
        }
        TarefasStruct [] private tarefas;
        
        
        mapping(address => uint []) private minhasTarefas;
        
        event adicionarTarefas (address owner, string name, TarefasFases, uint priority);
        
        modifier IonlyOwner (uint _indicesTarefas) {
            if (tarefas [_indicesTarefas]) .owner = = msg. sender) {
                
             _;
             
            }
            
        }
        
        constructor () public {
        
                adicionarTarefas ("criar tarefas gerente") ,TarefasFases.Done, 1);
                adicionarTarefas ("Create your first tarefa", TarefasFases.ToDo, 1);
                adicionarTarefas ("clean your house", TarefasFases.ToDo, 5);
                
        }
        
        function obterTarefa(uint _indicesTarefas) public view
            returns (address owner, string memory name. TarefasFases, uint priority) {
                
                owner = TarefasFases[_indicesTarefas] .owner;
                name = TarefasFases[_indicesTarefas].TarefasFases;
                TarefasFases = TarefasFases[_indicesTarefas] .priority;
                
        function listarMinhasTarefas () public view returns (uint [] memory) {
            returns minhasTarefas[msg.sender];
            
            
        function adicionarTarefas (string memory _name, TarefasFases _indicesTarefas, uint _priority) public returns (uint index)
            require ((_priority >= && _priority <=5), "prioridade de tarefas deve estar entre 1 e 5");
            TarefasStruct memory tarefaAauxiliar = TarefasStruct ({
                owner: msg.sender,
                name: _name,
                TarefasFases: _indicesTarefas,
                priority: _priority
            });
            index = tarefasFases.push (tarefaAauxiliar) -1;
            nTarefas ++;
            minhasTarefas[msg.sender].push(index);
            
            emit tarefaAdicionada (msg.sender, _name, tarefasFases, _priority);
            
        }
        
        function atualizarTarefasFases( uint _indicesTarefas, tarefasFases) public IonlyOwner( _indicesTarefas) {
        
        }
    {
